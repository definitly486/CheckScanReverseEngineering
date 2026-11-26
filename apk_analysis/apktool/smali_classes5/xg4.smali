.class public final synthetic Lxg4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/qg;


# instance fields
.field public final synthetic a:Ljava/lang/Thread;

.field public final synthetic b:Lio/appmetrica/analytics/impl/qg;

.field public final synthetic c:Lio/appmetrica/analytics/impl/L9;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Thread;Lio/appmetrica/analytics/impl/qg;Lio/appmetrica/analytics/impl/L9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxg4;->a:Ljava/lang/Thread;

    iput-object p2, p0, Lxg4;->b:Lio/appmetrica/analytics/impl/qg;

    iput-object p3, p0, Lxg4;->c:Lio/appmetrica/analytics/impl/L9;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/yg;)V
    .locals 2

    iget-object v0, p0, Lxg4;->b:Lio/appmetrica/analytics/impl/qg;

    iget-object v1, p0, Lxg4;->c:Lio/appmetrica/analytics/impl/L9;

    iget-object p0, p0, Lxg4;->a:Ljava/lang/Thread;

    invoke-static {p0, v0, v1, p1}, Lio/appmetrica/analytics/impl/L9;->a(Ljava/lang/Thread;Lio/appmetrica/analytics/impl/qg;Lio/appmetrica/analytics/impl/L9;Lio/appmetrica/analytics/impl/yg;)V

    return-void
.end method
