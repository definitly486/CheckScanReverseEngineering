.class public abstract Lk0;
.super Lgg3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lgg3<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final c:Lgg3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgg3<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgg3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg3<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lgg3;-><init>()V

    const-string v0, "source is null"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lk0;->c:Lgg3;

    return-void
.end method
