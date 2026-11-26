.class public final Ld58;
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
.method public constructor <init>(Lvi3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld58;->a:Lvi3;

    return-void
.end method
