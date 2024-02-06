import time

from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions
from selenium.webdriver.support.select import Select
from selenium.webdriver.support.wait import WebDriverWait

driver=webdriver.Chrome()
driver.maximize_window()
# driver.implicitly_wait(20)
driver.get("https://facebook.com")

wait=WebDriverWait(driver,30)

# driver.find_element(By.XPATH,"//button[@title='Allow all cookies']").click()
wait.until(expected_conditions.visibility_of_element_located
           ((By.XPATH,"//button[@title='Allow all cookies']"))).click()

# driver.find_element(By.ID,"email").send_keys("jack123444455@gmail.com")
wait.until(expected_conditions.visibility_of_element_located
           ((By.ID,"email"))).send_keys("jack123444455@gmail.com")

# driver.find_element(By.ID,"pass").send_keys("welcome@123")
wait.until(expected_conditions.visibility_of_element_located
           ((By.ID,"pass"))).send_keys("welcome@123")

# driver.find_element(By.NAME,"login").click()
wait.until(expected_conditions.visibility_of_element_located
           ((By.NAME,"login"))).click()

actual_header=wait.until(expected_conditions.visibility_of_element_located
           ((By.TAG_NAME,"h2"))).text
print(actual_header)