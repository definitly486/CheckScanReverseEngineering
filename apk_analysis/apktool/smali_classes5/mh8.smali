.class public final synthetic Lmh8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/impl/X;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/X;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmh8;->b:Lio/appmetrica/analytics/impl/X;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmh8;->b:Lio/appmetrica/analytics/impl/X;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/T;->a(Lio/appmetrica/analytics/impl/X;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
