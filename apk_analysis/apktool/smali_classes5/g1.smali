.class public abstract Lg1;
.super Ltq5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ltq5<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final b:Lwr5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwr5<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwr5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwr5<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ltq5;-><init>()V

    iput-object p1, p0, Lg1;->b:Lwr5;

    return-void
.end method
