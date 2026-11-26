.class public final Lkz2$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf53$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkz2$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf53$b<",
        "Lod2<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkz2$a;


# direct methods
.method public constructor <init>(Lkz2$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkz2$a$a;->a:Lkz2$a;

    return-void
.end method


# virtual methods
.method public final create()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lod2;

    iget-object p0, p0, Lkz2$a$a;->a:Lkz2$a;

    iget-object v1, p0, Lkz2$a;->a:Lkz2$c;

    iget-object p0, p0, Lkz2$a;->b:Lf53$c;

    invoke-direct {v0, v1, p0}, Lod2;-><init>(Lkz2$c;Lf53$c;)V

    return-object v0
.end method
