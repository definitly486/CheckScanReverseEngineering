.class public final Lio/appmetrica/analytics/impl/T1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/tk;


# static fields
.field public static final b:Lio/appmetrica/analytics/impl/S1;

.field public static final c:I = 0x1


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/v0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/S1;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/S1;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/T1;->b:Lio/appmetrica/analytics/impl/S1;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/v0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/T1;->a:Lio/appmetrica/analytics/impl/v0;

    return-void
.end method


# virtual methods
.method public final reportData(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T1;->a:Lio/appmetrica/analytics/impl/v0;

    check-cast p0, Lio/appmetrica/analytics/impl/Q1;

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/Q1;->a(Landroid/os/Bundle;)V

    return-void
.end method
