.class public final Lgi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhm2;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lee;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lee;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgi;->a:Landroid/content/Context;

    iput-object p2, p0, Lgi;->b:Lee;

    return-void
.end method


# virtual methods
.method public final getDeviceInfo()Lp08;
    .locals 5

    iget-object v0, p0, Lgi;->a:Landroid/content/Context;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Lcc;

    invoke-direct {v2, p0}, Lcc;-><init>(Lgi;)V

    new-instance v3, Loz7;

    invoke-direct {v3, v2}, Loz7;-><init>(Lw08;)V

    new-instance v2, Lbe;

    iget-object p0, p0, Lgi;->b:Lee;

    invoke-direct {v2, p0}, Lbe;-><init>(Ljava/lang/Object;)V

    new-instance p0, Loz7;

    invoke-direct {p0, v2}, Loz7;-><init>(Lw08;)V

    new-instance v2, Lci;

    sget-object v4, Lei;->f:Lei;

    invoke-direct {v2, v4}, Lci;-><init>(Ljava/lang/Object;)V

    invoke-static {v3, p0, v2}, Lmz7;->j(Lmz7;Lmz7;Lli0;)Lmz7;

    move-result-object p0

    sget-object v2, Lne7;->c:Lhe7;

    invoke-virtual {p0, v2}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p0

    new-instance v2, Lfi;

    invoke-direct {v2, v0}, Lfi;-><init>(Z)V

    new-instance v0, Ldi;

    invoke-direct {v0, v2, v1}, Ldi;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lp08;

    invoke-direct {v1, p0, v0}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object v1
.end method
