/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package kalkulatorwydatkow.gui;

import kalkulatorwydatkow.businesslogic.Autoryzacja;
import kalkulatorwydatkow.model.Sys;

public class Logowanie extends javax.swing.JFrame {

    /**
     * Creates new form Logowanie
     */
    public Logowanie() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        txtLogin = new javax.swing.JTextField();
        txtHaslo = new javax.swing.JPasswordField();
        btnZaloguj = new javax.swing.JButton();
        btnRejestracja = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setText("Login");

        jLabel2.setText("Hasło");

        btnZaloguj.setText("Zaloguj");
        btnZaloguj.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnZalogujActionPerformed(evt);
            }
        });

        btnRejestracja.setText("Przejdź do rejestracji");
        btnRejestracja.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnRejestracjaActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(btnRejestracja)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 54, Short.MAX_VALUE)
                        .addComponent(btnZaloguj))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel1)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txtLogin))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel2)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txtHaslo)))
                .addGap(12, 12, 12))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(txtLogin, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(txtHaslo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 65, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnZaloguj)
                    .addComponent(btnRejestracja))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnZalogujActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnZalogujActionPerformed
        String haslo = String.valueOf(txtHaslo.getPassword());
        if(haslo.isEmpty()) {
            Sys.warning("Hasło", "Nie podano hasła");
            return;
        }

        String login = txtLogin.getText();

        if(login.isEmpty()) {
            Sys.warning("Login", "Nie podano loginu");
            return;
        }

        boolean zalogowano = Autoryzacja.zaloguj(login, haslo);

        if(zalogowano) {
            Sys.info("Logowanie", "Zalogowano do systemu");

            setVisible(false);
            new Desktop(this).setVisible(true);

        } else {
            Sys.warning("Logowanie", "Niepoprawny login lub hasło.");
        }

        txtLogin.setText("");
        txtHaslo.setText("");
    }//GEN-LAST:event_btnZalogujActionPerformed

    private void btnRejestracjaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnRejestracjaActionPerformed
        setVisible(false);
        new Rejestracja(this).setVisible(true);
    }//GEN-LAST:event_btnRejestracjaActionPerformed

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnRejestracja;
    private javax.swing.JButton btnZaloguj;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPasswordField txtHaslo;
    private javax.swing.JTextField txtLogin;
    // End of variables declaration//GEN-END:variables
}
