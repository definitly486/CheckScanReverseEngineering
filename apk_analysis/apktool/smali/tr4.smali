.class public final Ltr4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lkk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkk2;"
        }
    .end annotation
.end field

.field public final b:Lx3;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0, v0}, Ltr4;-><init>(Lkk2;Lx3;)V

    return-void
.end method

.method public constructor <init>(Lkk2;Lx3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltr4;->a:Lkk2;

    iput-object p2, p0, Ltr4;->b:Lx3;

    return-void
.end method
