.class public final Lsw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li47;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li47<",
        "Ljava/nio/ByteBuffer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lvq2;


# direct methods
.method public constructor <init>(Lvq2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsw0;->a:Lvq2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILxz5;)Le47;
    .locals 6

    check-cast p1, Ljava/nio/ByteBuffer;

    new-instance v1, Lz14$a;

    iget-object v0, p0, Lsw0;->a:Lvq2;

    iget-object p0, v0, Lvq2;->d:Ljava/util/ArrayList;

    iget-object v2, v0, Lvq2;->c:Lpr;

    invoke-direct {v1, p1, p0, v2}, Lz14$a;-><init>(Ljava/nio/ByteBuffer;Ljava/util/ArrayList;Lpr;)V

    sget-object v5, Lvq2;->k:Lvq2$a;

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lvq2;->a(Lz14;IILxz5;Lvq2$b;)Lkj0;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;Lxz5;)Z
    .locals 0

    check-cast p1, Ljava/nio/ByteBuffer;

    const/4 p0, 0x1

    return p0
.end method
