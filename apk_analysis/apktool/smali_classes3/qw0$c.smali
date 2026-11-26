.class public final Lqw0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls82;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqw0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls82<",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final b:[B

.field public final c:Lqw0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqw0$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLqw0$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lqw0$b<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqw0$c;->b:[B

    iput-object p2, p0, Lqw0$c;->c:Lqw0$b;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    iget-object p0, p0, Lqw0$c;->c:Lqw0$b;

    invoke-interface {p0}, Lqw0$b;->a()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()Ly82;
    .locals 0

    sget-object p0, Ly82;->LOCAL:Ly82;

    return-object p0
.end method

.method public final cancel()V
    .locals 0

    return-void
.end method

.method public final f(Ljg6;Ls82$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg6;",
            "Ls82$a<",
            "-TData;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lqw0$c;->c:Lqw0$b;

    iget-object p0, p0, Lqw0$c;->b:[B

    invoke-interface {p1, p0}, Lqw0$b;->b([B)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Ls82$a;->d(Ljava/lang/Object;)V

    return-void
.end method
