.class public final synthetic Lyw9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/impl/hc;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/hc;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyw9;->b:Lio/appmetrica/analytics/impl/hc;

    iput-boolean p2, p0, Lyw9;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lyw9;->b:Lio/appmetrica/analytics/impl/hc;

    iget-boolean p0, p0, Lyw9;->c:Z

    invoke-static {v0, p0}, Lio/appmetrica/analytics/impl/hc;->a(Lio/appmetrica/analytics/impl/hc;Z)V

    return-void
.end method
