.class public final Lkz2$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf53$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkz2$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf53$b<",
        "Luz2<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkz2$b;


# direct methods
.method public constructor <init>(Lkz2$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkz2$b$a;->a:Lkz2$b;

    return-void
.end method


# virtual methods
.method public final create()Ljava/lang/Object;
    .locals 8

    new-instance v0, Luz2;

    iget-object p0, p0, Lkz2$b$a;->a:Lkz2$b;

    iget-object v1, p0, Lkz2$b;->a:Lxq3;

    iget-object v2, p0, Lkz2$b;->b:Lxq3;

    iget-object v3, p0, Lkz2$b;->c:Lxq3;

    iget-object v4, p0, Lkz2$b;->d:Lxq3;

    iget-object v5, p0, Lkz2$b;->e:Lkz2;

    iget-object v6, p0, Lkz2$b;->f:Lkz2;

    iget-object v7, p0, Lkz2$b;->g:Lf53$c;

    invoke-direct/range {v0 .. v7}, Luz2;-><init>(Lxq3;Lxq3;Lxq3;Lxq3;Lkz2;Lkz2;Lf53$c;)V

    return-object v0
.end method
