.class public final Lde6;
.super Ljava/lang/Throwable;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lde6;->b:Ljava/lang/Thread;

    return-void
.end method
