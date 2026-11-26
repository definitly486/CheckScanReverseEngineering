.class public final synthetic Lsm9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Activity$ScreenCaptureCallback;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/screenshot/impl/d;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/screenshot/impl/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsm9;->a:Lio/appmetrica/analytics/screenshot/impl/d;

    return-void
.end method


# virtual methods
.method public final onScreenCaptured()V
    .locals 0

    iget-object p0, p0, Lsm9;->a:Lio/appmetrica/analytics/screenshot/impl/d;

    invoke-static {p0}, Lio/appmetrica/analytics/screenshot/impl/a;->a(Lio/appmetrica/analytics/screenshot/impl/d;)V

    return-void
.end method
