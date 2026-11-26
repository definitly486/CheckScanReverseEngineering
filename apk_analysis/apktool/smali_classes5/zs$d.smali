.class public final Lzs$d;
.super Lgj3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic c:Lzs;


# direct methods
.method public constructor <init>(Lzs;Lvk3;)V
    .locals 0

    iput-object p1, p0, Lzs$d;->c:Lzs;

    invoke-direct {p0, p2}, Lgj3;-><init>(Lvk3;)V

    return-void
.end method


# virtual methods
.method public final h0(ILq03;)V
    .locals 2

    iget-object v0, p0, Lzs$d;->c:Lzs;

    iget v1, v0, Lzs;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lzs;->l:I

    iget-object p0, p0, Lgj3;->b:Lvk3;

    invoke-interface {p0, p1, p2}, Lvk3;->h0(ILq03;)V

    return-void
.end method

.method public final m0(IIZ)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lzs$d;->c:Lzs;

    iget v1, v0, Lzs;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lzs;->l:I

    :cond_0
    iget-object p0, p0, Lgj3;->b:Lvk3;

    invoke-interface {p0, p1, p2, p3}, Lvk3;->m0(IIZ)V

    return-void
.end method

.method public final p0(Lpr7;)V
    .locals 2

    iget-object v0, p0, Lzs$d;->c:Lzs;

    iget v1, v0, Lzs;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lzs;->l:I

    iget-object p0, p0, Lgj3;->b:Lvk3;

    invoke-interface {p0, p1}, Lvk3;->p0(Lpr7;)V

    return-void
.end method
