.class public final Landroidx/browser/auth/AuthTabColorSchemeParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/auth/AuthTabColorSchemeParams$Builder;
    }
.end annotation


# instance fields
.field private final mNavigationBarColor:Ljava/lang/Integer;

.field private final mNavigationBarDividerColor:Ljava/lang/Integer;

.field private final mToolbarColor:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mToolbarColor:Ljava/lang/Integer;

    iput-object p2, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mNavigationBarColor:Ljava/lang/Integer;

    iput-object p3, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mNavigationBarDividerColor:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroidx/browser/auth/AuthTabColorSchemeParams$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Landroidx/browser/auth/AuthTabColorSchemeParams;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/browser/auth/AuthTabColorSchemeParams;
    .locals 4

    if-nez p0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/Bundle;-><init>(I)V

    :cond_0
    new-instance v0, Landroidx/browser/auth/AuthTabColorSchemeParams;

    const-string v1, "android.support.customtabs.extra.TOOLBAR_COLOR"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v2, "androidx.browser.customtabs.extra.NAVIGATION_BAR_COLOR"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "androidx.browser.customtabs.extra.NAVIGATION_BAR_DIVIDER_COLOR"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, p0}, Landroidx/browser/auth/AuthTabColorSchemeParams;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public getNavigationBarColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mNavigationBarColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public getNavigationBarDividerColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mNavigationBarDividerColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public getToolbarColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mToolbarColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mToolbarColor:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const-string v2, "android.support.customtabs.extra.TOOLBAR_COLOR"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-object v1, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mNavigationBarColor:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v2, "androidx.browser.customtabs.extra.NAVIGATION_BAR_COLOR"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget-object p0, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mNavigationBarDividerColor:Ljava/lang/Integer;

    if-eqz p0, :cond_2

    const-string v1, "androidx.browser.customtabs.extra.NAVIGATION_BAR_DIVIDER_COLOR"

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    return-object v0
.end method

.method public withDefaults(Landroidx/browser/auth/AuthTabColorSchemeParams;)Landroidx/browser/auth/AuthTabColorSchemeParams;
    .locals 3

    new-instance v0, Landroidx/browser/auth/AuthTabColorSchemeParams;

    iget-object v1, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mToolbarColor:Ljava/lang/Integer;

    if-nez v1, :cond_0

    iget-object v1, p1, Landroidx/browser/auth/AuthTabColorSchemeParams;->mToolbarColor:Ljava/lang/Integer;

    :cond_0
    iget-object v2, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mNavigationBarColor:Ljava/lang/Integer;

    if-nez v2, :cond_1

    iget-object v2, p1, Landroidx/browser/auth/AuthTabColorSchemeParams;->mNavigationBarColor:Ljava/lang/Integer;

    :cond_1
    iget-object p0, p0, Landroidx/browser/auth/AuthTabColorSchemeParams;->mNavigationBarDividerColor:Ljava/lang/Integer;

    if-nez p0, :cond_2

    iget-object p0, p1, Landroidx/browser/auth/AuthTabColorSchemeParams;->mNavigationBarDividerColor:Ljava/lang/Integer;

    :cond_2
    invoke-direct {v0, v1, v2, p0}, Landroidx/browser/auth/AuthTabColorSchemeParams;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method
