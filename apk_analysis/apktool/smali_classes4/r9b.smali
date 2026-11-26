.class public final enum Lr9b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final enum zza:Lr9b;

.field private static final synthetic zzb:[Lr9b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr9b;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr9b;->zza:Lr9b;

    filled-new-array {v0}, [Lr9b;

    move-result-object v0

    sput-object v0, Lr9b;->zzb:[Lr9b;

    return-void
.end method

.method public static values()[Lr9b;
    .locals 1

    sget-object v0, Lr9b;->zzb:[Lr9b;

    invoke-virtual {v0}, [Lr9b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr9b;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "MoreExecutors.directExecutor()"

    return-object p0
.end method
