.class public final Lhdb;
.super Lkub;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lthb;


# direct methods
.method public constructor <init>(Lthb;Lthb;)V
    .locals 0

    iput-object p1, p0, Lhdb;->b:Lthb;

    invoke-direct {p0, p2}, Lkub;-><init>(Ln1c;)V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;)V
    .locals 0

    iget-object p0, p0, Lhdb;->b:Lthb;

    iget-object p0, p0, Ln1c;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
