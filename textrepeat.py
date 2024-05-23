#pip install pyautogui
import pyautogui as pg
import time

x=eval(input())
time.sleep(1)
pg.hotkey('ctrl','a')
time.sleep(0.01)
pg.hotkey('ctrl','c')
time.sleep(0.01)
for i in range(x):
    pg.hotkey('ctrl','v')
    time.sleep(0.01)
    pg.hotkey('ctrl','enter')
    time.sleep(0.01)
print('done')
