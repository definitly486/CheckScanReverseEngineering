.class public final synthetic Lmd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lld0$a;


# instance fields
.field public final synthetic a:Lnd0;


# direct methods
.method public synthetic constructor <init>(Lnd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmd0;->a:Lnd0;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    iget-object p0, p0, Lmd0;->a:Lnd0;

    iget-object v0, p0, Lnd0;->r:Ltc3;

    invoke-virtual {v0}, Ltc3;->m()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lnd0;->x:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lnd0;->x:Z

    iget-object p0, p0, Lnd0;->o:Lox4;

    invoke-virtual {p0}, Lox4;->invalidateSelf()V

    :cond_1
    return-void
.end method
