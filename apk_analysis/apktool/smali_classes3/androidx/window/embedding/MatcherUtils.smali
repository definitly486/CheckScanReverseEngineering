.class public final Landroidx/window/embedding/MatcherUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/window/embedding/MatcherUtils;

.field public static final sDebugMatchers:Z = false

.field public static final sMatchersTag:Ljava/lang/String; = "SplitRuleResolution"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/embedding/MatcherUtils;

    invoke-direct {v0}, Landroidx/window/embedding/MatcherUtils;-><init>()V

    sput-object v0, Landroidx/window/embedding/MatcherUtils;->INSTANCE:Landroidx/window/embedding/MatcherUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string p0, "*"

    const/4 v0, 0x0

    invoke-static {p2, p0, v0}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x6

    invoke-static {p2, p0, v0, v0, v1}, Lta8;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v3

    invoke-static {v1, p2, p0}, Lta8;->N(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v3, v1, :cond_2

    invoke-static {p2, p0, v0}, Lra8;->u(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_2
    const-string p0, "Name pattern with a wildcard must only contain a single wildcard in the end"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public final areComponentsMatching$window_release(Landroidx/window/core/ActivityComponentInfo;Landroidx/window/core/ActivityComponentInfo;)Z
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "*"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroidx/window/core/ActivityComponentInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p2}, Landroidx/window/core/ActivityComponentInfo;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_0
    invoke-virtual {p1}, Landroidx/window/core/ActivityComponentInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroidx/window/core/ActivityComponentInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/window/core/ActivityComponentInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/window/core/ActivityComponentInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/window/core/ActivityComponentInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroidx/window/embedding/MatcherUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p1}, Landroidx/window/core/ActivityComponentInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroidx/window/core/ActivityComponentInfo;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Landroidx/window/core/ActivityComponentInfo;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/window/core/ActivityComponentInfo;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/MatcherUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move p0, v2

    goto :goto_3

    :cond_4
    :goto_2
    move p0, v1

    :goto_3
    if-eqz v0, :cond_5

    if-eqz p0, :cond_5

    :goto_4
    return v1

    :cond_5
    return v2

    :cond_6
    const-string p0, "Wildcard can only be part of the rule."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return v2
.end method

.method public final isActivityMatching$window_release(Landroid/app/Activity;Landroidx/window/core/ActivityComponentInfo;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/window/core/ActivityComponentInfo;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroidx/window/core/ActivityComponentInfo;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0, p2}, Landroidx/window/embedding/MatcherUtils;->areComponentsMatching$window_release(Landroidx/window/core/ActivityComponentInfo;Landroidx/window/core/ActivityComponentInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Landroidx/window/embedding/MatcherUtils;->INSTANCE:Landroidx/window/embedding/MatcherUtils;

    invoke-virtual {p1, p0, p2}, Landroidx/window/embedding/MatcherUtils;->isIntentMatching$window_release(Landroid/content/Intent;Landroidx/window/core/ActivityComponentInfo;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isIntentMatching$window_release(Landroid/content/Intent;Landroidx/window/core/ActivityComponentInfo;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/window/core/ActivityComponentInfo;

    invoke-direct {v1, v0}, Landroidx/window/core/ActivityComponentInfo;-><init>(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, p2}, Landroidx/window/embedding/MatcherUtils;->areComponentsMatching$window_release(Landroidx/window/core/ActivityComponentInfo;Landroidx/window/core/ActivityComponentInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p2}, Landroidx/window/core/ActivityComponentInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroidx/window/core/ActivityComponentInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/window/embedding/MatcherUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    invoke-virtual {p2}, Landroidx/window/core/ActivityComponentInfo;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "*"

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method public final validateComponentName$window_release(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_4

    const-string p0, "*"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_1

    invoke-static {p1, p0, v0, v0, v2}, Lta8;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Wildcard in package name is only allowed at the end."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {p2, p0, v0}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2, p0, v0, v0, v2}, Lta8;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "Wildcard in class name is only allowed at the end."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string p0, "Activity class name must not be empty"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string p0, "Package name must not be empty"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method
