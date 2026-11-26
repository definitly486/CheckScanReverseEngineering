.class Landroidx/core/splashscreen/SplashScreen$Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/splashscreen/SplashScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private animationListener:Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;

.field private backgroundColor:Ljava/lang/Integer;

.field private backgroundResId:Ljava/lang/Integer;

.field private finalThemeId:I

.field private hasBackground:Z

.field private icon:Landroid/graphics/drawable/Drawable;

.field private mSplashScreenViewProvider:Landroidx/core/splashscreen/SplashScreenViewProvider;

.field private splashScreenWaitPredicate:Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->activity:Landroid/app/Activity;

    new-instance p1, Landroidx/core/splashscreen/a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->splashScreenWaitPredicate:Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;

    return-void
.end method

.method public static synthetic a(Landroidx/core/splashscreen/SplashScreenViewProvider;Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/splashscreen/SplashScreen$Impl;->dispatchOnExitAnimation$lambda$3(Landroidx/core/splashscreen/SplashScreenViewProvider;Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;)V

    return-void
.end method

.method public static final synthetic access$getMSplashScreenViewProvider$p(Landroidx/core/splashscreen/SplashScreen$Impl;)Landroidx/core/splashscreen/SplashScreenViewProvider;
    .locals 0

    iget-object p0, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->mSplashScreenViewProvider:Landroidx/core/splashscreen/SplashScreenViewProvider;

    return-object p0
.end method

.method public static final synthetic access$setMSplashScreenViewProvider$p(Landroidx/core/splashscreen/SplashScreen$Impl;Landroidx/core/splashscreen/SplashScreenViewProvider;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->mSplashScreenViewProvider:Landroidx/core/splashscreen/SplashScreenViewProvider;

    return-void
.end method

.method public static synthetic b()Z
    .locals 1

    invoke-static {}, Landroidx/core/splashscreen/SplashScreen$Impl;->splashScreenWaitPredicate$lambda$0()Z

    move-result v0

    return v0
.end method

.method private static final dispatchOnExitAnimation$lambda$3(Landroidx/core/splashscreen/SplashScreenViewProvider;Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/core/splashscreen/SplashScreenViewProvider;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    invoke-interface {p1, p0}, Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;->onSplashScreenExit(Landroidx/core/splashscreen/SplashScreenViewProvider;)V

    return-void
.end method

.method private final displaySplashScreenIcon(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    sget v0, Landroidx/core/splashscreen/R$id;->splashscreen_icon_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-boolean p0, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->hasBackground:Z

    const v0, 0x3f2aaaab

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Landroidx/core/splashscreen/R$drawable;->icon_background:I

    invoke-static {p0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/core/splashscreen/R$dimen;->splashscreen_icon_size_with_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v0

    if-eqz p0, :cond_1

    new-instance v0, Landroidx/core/splashscreen/MaskedDrawable;

    invoke-direct {v0, p0, v1}, Landroidx/core/splashscreen/MaskedDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Landroidx/core/splashscreen/R$dimen;->splashscreen_icon_size_no_background:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    mul-float v1, p0, v0

    :cond_1
    :goto_0
    new-instance p0, Landroidx/core/splashscreen/MaskedDrawable;

    invoke-direct {p0, p2, v1}, Landroidx/core/splashscreen/MaskedDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static final splashScreenWaitPredicate$lambda$0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final dispatchOnExitAnimation(Landroidx/core/splashscreen/SplashScreenViewProvider;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->animationListener:Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->animationListener:Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;

    invoke-virtual {p1}, Landroidx/core/splashscreen/SplashScreenViewProvider;->getView()Landroid/view/View;

    move-result-object p0

    new-instance v1, Landroidx/core/splashscreen/b;

    invoke-direct {v1, p1, v0}, Landroidx/core/splashscreen/b;-><init>(Landroidx/core/splashscreen/SplashScreenViewProvider;Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public final getBackgroundColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->backgroundColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getBackgroundResId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->backgroundResId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getFinalThemeId()I
    .locals 0

    iget p0, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->finalThemeId:I

    return p0
.end method

.method public final getHasBackground()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->hasBackground:Z

    return p0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getSplashScreenWaitPredicate()Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;
    .locals 0

    iget-object p0, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->splashScreenWaitPredicate:Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;

    return-object p0
.end method

.method public install()V
    .locals 5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroidx/core/splashscreen/R$attr;->windowSplashScreenBackground:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->backgroundResId:Ljava/lang/Integer;

    iget v2, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->backgroundColor:Ljava/lang/Integer;

    :cond_0
    sget v2, Landroidx/core/splashscreen/R$attr;->windowSplashScreenAnimatedIcon:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->activity:Landroid/app/Activity;

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->icon:Landroid/graphics/drawable/Drawable;

    :cond_1
    sget v2, Landroidx/core/splashscreen/R$attr;->splashScreenIconSize:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    sget v4, Landroidx/core/splashscreen/R$dimen;->splashscreen_icon_size_with_background:I

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->hasBackground:Z

    :cond_3
    invoke-virtual {p0, v1, v0}, Landroidx/core/splashscreen/SplashScreen$Impl;->setPostSplashScreenTheme(Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;)V

    return-void
.end method

.method public final setBackgroundColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->backgroundColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setBackgroundResId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->backgroundResId:Ljava/lang/Integer;

    return-void
.end method

.method public final setFinalThemeId(I)V
    .locals 0

    iput p1, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->finalThemeId:I

    return-void
.end method

.method public final setHasBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->hasBackground:Z

    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setKeepOnScreenCondition(Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->splashScreenWaitPredicate:Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;

    iget-object p1, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->activity:Landroid/app/Activity;

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroidx/core/splashscreen/SplashScreen$Impl$setKeepOnScreenCondition$1;

    invoke-direct {v1, p0, p1}, Landroidx/core/splashscreen/SplashScreen$Impl$setKeepOnScreenCondition$1;-><init>(Landroidx/core/splashscreen/SplashScreen$Impl;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public setOnExitAnimationListener(Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->animationListener:Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;

    new-instance p1, Landroidx/core/splashscreen/SplashScreenViewProvider;

    iget-object v0, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroidx/core/splashscreen/SplashScreenViewProvider;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->backgroundResId:Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroidx/core/splashscreen/SplashScreenViewProvider;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-direct {p0, v2, v0}, Landroidx/core/splashscreen/SplashScreen$Impl;->displaySplashScreenIcon(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    new-instance v0, Landroidx/core/splashscreen/SplashScreen$Impl$setOnExitAnimationListener$2;

    invoke-direct {v0, p0, p1}, Landroidx/core/splashscreen/SplashScreen$Impl$setOnExitAnimationListener$2;-><init>(Landroidx/core/splashscreen/SplashScreen$Impl;Landroidx/core/splashscreen/SplashScreenViewProvider;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final setPostSplashScreenTheme(Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/core/splashscreen/R$attr;->postSplashScreenTheme:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p2, Landroid/util/TypedValue;->resourceId:I

    iput p1, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->finalThemeId:I

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->activity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    :cond_0
    return-void
.end method

.method public final setSplashScreenWaitPredicate(Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/core/splashscreen/SplashScreen$Impl;->splashScreenWaitPredicate:Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;

    return-void
.end method
