.class public final Lio/appmetrica/analytics/impl/ui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lio/appmetrica/analytics/impl/wi;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/wi;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/ui;->b:Lio/appmetrica/analytics/impl/wi;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/ui;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ui;->b:Lio/appmetrica/analytics/impl/wi;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/wi;->b:Lio/appmetrica/analytics/impl/C0;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ui;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/B0;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/B0;

    return-void
.end method
