.class public final Lqg4$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsy0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqg4;->b(Lfy0;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsy0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc31;


# direct methods
.method public constructor <init>(Lc31;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqg4$d;->a:Lc31;

    return-void
.end method


# virtual methods
.method public final a(Lfy0;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfy0<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lk57$a;

    invoke-direct {p1, p2}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lqg4$d;->a:Lc31;

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lfy0;La57;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfy0<",
            "TT;>;",
            "La57<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p1, p2, La57;->a:Lz47;

    invoke-virtual {p1}, Lz47;->o()Z

    move-result p1

    iget-object p0, p0, Lqg4$d;->a:Lc31;

    if-eqz p1, :cond_0

    iget-object p1, p2, La57;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Lretrofit2/HttpException;

    invoke-direct {p1, p2}, Lretrofit2/HttpException;-><init>(La57;)V

    new-instance p2, Lk57$a;

    invoke-direct {p2, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
