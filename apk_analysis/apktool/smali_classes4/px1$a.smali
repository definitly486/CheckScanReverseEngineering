.class public final Lpx1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmq5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpx1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmq5<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lc64;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc64<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc64;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc64<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpx1$a;->b:Lc64;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lpx1$a;->b:Lc64;

    invoke-interface {p0}, Lc64;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
