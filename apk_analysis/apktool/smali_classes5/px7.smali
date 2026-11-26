.class public final Lpx7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvi3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lvi3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lvi3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvi3<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvi3;Lox7$a;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpx7;->a:Lvi3;

    return-void
.end method
