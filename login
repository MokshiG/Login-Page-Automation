from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from time import sleep
from selenium.webdriver.support.select import Select

service_obj = Service()
driver = webdriver.Chrome(service=service_obj)

driver.get("https://rahulshettyacademy.com/angularpractice/")
driver.find_element(By.NAME,"name").send_keys("Mokshika")
driver.find_element(By.NAME,"email").send_keys("mokshikagupta00@gmail.com")

driver.find_element(By.ID,"exampleInputPassword1").send_keys("mokshika1")
driver.find_element(By.ID,"exampleCheck1").click()

driver.find_element(By.CSS_SELECTOR, "#inlineRadio1").click()

dropdown = Select(driver.find_element(By.ID, "exampleFormControlSelect1"))
dropdown.select_by_visible_text("Male")
dropdown.select_by_index(1)

driver.find_element(By.XPATH, "//input[@type ='submit']").click()

message = driver.find_element(By.CLASS_NAME,"alert-success").text
assert "Success! The Form has been submitted successfully!" in message
sleep(50)

