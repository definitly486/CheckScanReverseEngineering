.class public final enum Lj3b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final enum zza:Lj3b;

.field private static final synthetic zzb:[Lj3b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lj3b;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj3b;->zza:Lj3b;

    filled-new-array {v0}, [Lj3b;

    move-result-object v0

    sput-object v0, Lj3b;->zzb:[Lj3b;

    return-void
.end method

.method public static values()[Lj3b;
    .locals 1

    sget-object v0, Lj3b;->zzb:[Lj3b;

    invoke-virtual {v0}, [Lj3b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj3b;

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
