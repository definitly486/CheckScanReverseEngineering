.class public final Lb97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgy0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lgy0<",
        "TR;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;ZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb97;->a:Ljava/lang/reflect/Type;

    iput-boolean p2, p0, Lb97;->b:Z

    iput-boolean p3, p0, Lb97;->c:Z

    iput-boolean p4, p0, Lb97;->d:Z

    iput-boolean p5, p0, Lb97;->e:Z

    iput-boolean p6, p0, Lb97;->f:Z

    iput-boolean p7, p0, Lb97;->g:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lb97;->a:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public final b(Lgv5;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Liy0;

    invoke-direct {v0, p1}, Liy0;-><init>(Lgv5;)V

    iget-boolean p1, p0, Lb97;->b:Z

    if-eqz p1, :cond_0

    new-instance p1, Lv57;

    invoke-direct {p1, v0}, Lv57;-><init>(Ltq5;)V

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lb97;->c:Z

    if-eqz p1, :cond_1

    new-instance p1, Lmk0;

    invoke-direct {p1, v0}, Lmk0;-><init>(Ltq5;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean p1, p0, Lb97;->d:Z

    if-eqz p1, :cond_2

    sget-object p0, Ln00;->MISSING:Ln00;

    invoke-virtual {v0, p0}, Ltq5;->h(Ln00;)Lgg3;

    move-result-object p0

    return-object p0

    :cond_2
    iget-boolean p1, p0, Lb97;->e:Z

    if-eqz p1, :cond_3

    new-instance p0, Lvr5;

    invoke-direct {p0, v0}, Lvr5;-><init>(Ltq5;)V

    return-object p0

    :cond_3
    iget-boolean p1, p0, Lb97;->f:Z

    if-eqz p1, :cond_4

    new-instance p0, Lur5;

    invoke-direct {p0, v0}, Lur5;-><init>(Ltq5;)V

    return-object p0

    :cond_4
    iget-boolean p0, p0, Lb97;->g:Z

    if-eqz p0, :cond_5

    new-instance p0, Lmr5;

    invoke-direct {p0, v0}, Lmr5;-><init>(Ltq5;)V

    return-object p0

    :cond_5
    return-object v0
.end method
