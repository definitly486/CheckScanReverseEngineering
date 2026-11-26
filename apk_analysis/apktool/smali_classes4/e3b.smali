.class public final Le3b;
.super Lkub;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ly8b;


# direct methods
.method public constructor <init>(Ly8b;Ly8b;)V
    .locals 0

    iput-object p1, p0, Le3b;->b:Ly8b;

    invoke-direct {p0, p2}, Lkub;-><init>(Ln1c;)V

    return-void
.end method


# virtual methods
.method public final zzb([B)V
    .locals 0

    iget-object p0, p0, Le3b;->b:Ly8b;

    iget-object p0, p0, Ln1c;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
