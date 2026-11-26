.class public final Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;
.super Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;
.source "SourceFile"


# instance fields
.field private final activity:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroidx/navigation/ui/AppBarConfiguration;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getDrawerToggleDelegate()Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0, p2}, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;-><init>(Landroid/content/Context;Landroidx/navigation/ui/AppBarConfiguration;)V

    iput-object p1, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->activity:Landroidx/appcompat/app/AppCompatActivity;

    return-void

    :cond_0
    const-string p0, "Activity "

    const-string p2, " does not have a DrawerToggleDelegate set"

    invoke-static {p1, p0, p2}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    iget-object v0, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const-string v1, "Activity "

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getDrawerToggleDelegate()Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    return-void

    :cond_1
    iget-object p0, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-string p1, " does not have a DrawerToggleDelegate set"

    invoke-static {p0, v1, p1}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object p0, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-string p1, " does not have an ActionBar set via setSupportActionBar()"

    invoke-static {p0, v1, p1}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const-string p1, " does not have an ActionBar set via setSupportActionBar()"

    const-string v0, "Activity "

    invoke-static {p0, v0, p1}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
