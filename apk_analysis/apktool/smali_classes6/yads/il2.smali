.class public final Lyads/il2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/bl2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/bl2;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lyads/bl2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyads/il2;->a:Lyads/bl2;

    return-void
.end method


# virtual methods
.method public final a([B)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {p1}, Lyads/qd3;->a([B)Lyads/pd3;

    move-result-object v0

    iget-object p0, p0, Lyads/il2;->a:Lyads/bl2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v0, Lyads/g73;

    invoke-direct {v0}, Lyads/g73;-><init>()V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Lyads/eu;

    invoke-direct {v0}, Lyads/eu;-><init>()V

    :goto_1
    iget-object p0, p0, Lyads/bl2;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lyads/al2;->a([BLandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
