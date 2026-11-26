.class public final Lq42;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lt42;

.field public final b:Ljf6;


# direct methods
.method public constructor <init>(Lt42;Ljf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq42;->a:Lt42;

    iput-object p2, p0, Lq42;->b:Ljf6;

    return-void
.end method

.method public static a(Ln32;)Lm32;
    .locals 10

    invoke-virtual {p0}, Ln32;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ln32;->a()Li32;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v3, Lh32;

    invoke-virtual {v0}, Li32;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Li32;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Li32;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0}, Lh32;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {p0}, Ln32;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ln32;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ln32;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ln32;->b()Lk32;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v7, Lj32;

    invoke-virtual {v6}, Lk32;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lk32;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lk32;->a()Lg32;

    move-result-object v6

    invoke-direct {v7, v8, v9, v6}, Lj32;-><init>(Ljava/lang/String;Ljava/lang/String;Lg32;)V

    move-object v6, v7

    goto :goto_1

    :cond_1
    move-object v6, v2

    :goto_1
    invoke-virtual {p0}, Ln32;->c()Le54;

    move-result-object v7

    if-eqz v7, :cond_2

    new-instance v2, Lb54;

    invoke-virtual {v7}, Le54;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Le54;->a()Lc42;

    move-result-object v7

    invoke-direct {v2, v8, v7}, Lb54;-><init>(Ljava/lang/String;Lc42;)V

    :cond_2
    move-object v8, v2

    invoke-virtual {p0}, Ln32;->h()Z

    move-result v7

    move-object v2, v3

    move-object v3, v0

    new-instance v0, Lm32;

    invoke-direct/range {v0 .. v8}, Lm32;-><init>(Ljava/lang/String;Lh32;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj32;ZLb54;)V

    return-object v0
.end method
