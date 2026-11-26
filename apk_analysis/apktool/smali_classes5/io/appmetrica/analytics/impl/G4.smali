.class public final Lio/appmetrica/analytics/impl/G4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/t4;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/I4;

.field public final c:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/I4;Lio/appmetrica/analytics/impl/B4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/G4;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/I4;

    iget-object p1, p3, Lio/appmetrica/analytics/impl/B4;->c:Landroid/os/ResultReceiver;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/G4;->c:Landroid/os/ResultReceiver;

    invoke-virtual {p2, p0}, Lio/appmetrica/analytics/impl/I4;->a(Lio/appmetrica/analytics/impl/G4;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 14
    iget-object v0, p0, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/I4;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/I4;->b(Lio/appmetrica/analytics/impl/G4;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/B4;)V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/I4;

    iget-object p2, p2, Lio/appmetrica/analytics/impl/B4;->b:Lio/appmetrica/analytics/impl/A4;

    invoke-virtual {v0, p2}, Lio/appmetrica/analytics/impl/I4;->a(Lio/appmetrica/analytics/impl/A4;)V

    iget-object p2, p0, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/I4;

    invoke-virtual {p2, p1, p0}, Lio/appmetrica/analytics/impl/I4;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/G4;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/g4;)V
    .locals 0

    .line 13
    iget-object p0, p0, Lio/appmetrica/analytics/impl/G4;->c:Landroid/os/ResultReceiver;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/impl/P6;->a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/g4;)V

    return-void
.end method

.method public final b()Lio/appmetrica/analytics/impl/I4;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/I4;

    return-object p0
.end method

.method public final c()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/G4;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final d()Landroid/os/ResultReceiver;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/G4;->c:Landroid/os/ResultReceiver;

    return-object p0
.end method
