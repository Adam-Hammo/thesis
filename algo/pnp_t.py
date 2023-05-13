import numpy as np
import cv2

m_X_t_1 = np.array(m_X_t_1, dtype=np.float64).reshape([int(np.size(m_X_t_1)/3),3])
m_X_t_2 = np.array(m_X_t_2, dtype=np.float64).reshape([int(np.size(m_X_t_2)/3),3])

_, T, _ = cv2.estimateTranslation3D(m_X_t_1, m_X_t_2)