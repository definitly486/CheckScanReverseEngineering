.class public final Lx87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz21;


# instance fields
.field public final a:La0;


# direct methods
.method public constructor <init>(La0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx87;->a:La0;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object p0, p0, Lx87;->a:La0;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method
