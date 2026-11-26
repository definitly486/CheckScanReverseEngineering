.class public final synthetic Lb8a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/impl/s2;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/s2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb8a;->b:Lio/appmetrica/analytics/impl/s2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lb8a;->b:Lio/appmetrica/analytics/impl/s2;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/s2;->a(Lio/appmetrica/analytics/impl/s2;)V

    return-void
.end method
