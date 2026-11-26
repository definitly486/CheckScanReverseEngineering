.class public final Lkz2$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkz2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Luz2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luz2<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Ly08;

.field public final synthetic c:Lkz2;


# direct methods
.method public constructor <init>(Lkz2;Ly08;Luz2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkz2$d;->c:Lkz2;

    iput-object p2, p0, Lkz2$d;->b:Ly08;

    iput-object p3, p0, Lkz2$d;->a:Luz2;

    return-void
.end method
