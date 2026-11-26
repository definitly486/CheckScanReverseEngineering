.class public final synthetic Ljd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/b1$a;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ljd0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lvha;Lj8a;)V
    .locals 0

    iget-object p0, p0, Ljd0;->b:Ljava/lang/Object;

    check-cast p0, Lkd0;

    check-cast p1, Lkia;

    invoke-virtual {p0, p1, p2}, Lkd0;->a(Lkia;Lj8a;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ljd0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/perf/config/RemoteConfigManager;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->b(Lcom/google/firebase/perf/config/RemoteConfigManager;Ljava/lang/Boolean;)V

    return-void
.end method
