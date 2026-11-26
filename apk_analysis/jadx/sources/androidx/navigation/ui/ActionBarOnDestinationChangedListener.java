package androidx.navigation.ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import defpackage.wg;

/* JADX INFO: loaded from: classes.dex */
public final class ActionBarOnDestinationChangedListener extends AbstractAppBarOnDestinationChangedListener {
    private final AppCompatActivity activity;

    /* JADX WARN: Illegal instructions before constructor call */
    public ActionBarOnDestinationChangedListener(AppCompatActivity appCompatActivity, AppBarConfiguration appBarConfiguration) {
        appCompatActivity.getClass();
        appBarConfiguration.getClass();
        ActionBarDrawerToggle.Delegate drawerToggleDelegate = appCompatActivity.getDrawerToggleDelegate();
        if (drawerToggleDelegate == null) {
            wg.c(appCompatActivity, "Activity ", " does not have a DrawerToggleDelegate set");
            throw null;
        }
        Context actionBarThemedContext = drawerToggleDelegate.getActionBarThemedContext();
        actionBarThemedContext.getClass();
        super(actionBarThemedContext, appBarConfiguration);
        this.activity = appCompatActivity;
    }

    @Override // androidx.navigation.ui.AbstractAppBarOnDestinationChangedListener
    public void setNavigationIcon(Drawable drawable, int i) {
        ActionBar supportActionBar = this.activity.getSupportActionBar();
        if (supportActionBar == null) {
            wg.c(this.activity, "Activity ", " does not have an ActionBar set via setSupportActionBar()");
            return;
        }
        supportActionBar.setDisplayHomeAsUpEnabled(drawable != null);
        ActionBarDrawerToggle.Delegate drawerToggleDelegate = this.activity.getDrawerToggleDelegate();
        if (drawerToggleDelegate != null) {
            drawerToggleDelegate.setActionBarUpIndicator(drawable, i);
        } else {
            wg.c(this.activity, "Activity ", " does not have a DrawerToggleDelegate set");
        }
    }

    @Override // androidx.navigation.ui.AbstractAppBarOnDestinationChangedListener
    public void setTitle(CharSequence charSequence) {
        ActionBar supportActionBar = this.activity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle(charSequence);
        } else {
            wg.c(this.activity, "Activity ", " does not have an ActionBar set via setSupportActionBar()");
        }
    }
}
