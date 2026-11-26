.class public abstract Lv1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lv1<",
        "TS;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ly81;

.field public final b:Lio/grpc/b;


# direct methods
.method public constructor <init>(Ly81;Lio/grpc/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1;->a:Ly81;

    iput-object p2, p0, Lv1;->b:Lio/grpc/b;

    return-void
.end method
