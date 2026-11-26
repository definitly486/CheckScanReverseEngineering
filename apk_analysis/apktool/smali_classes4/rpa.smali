.class public final enum Lrpa;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lrpa;

.field public static final enum zzb:Lrpa;

.field public static final enum zzc:Lrpa;

.field public static final enum zzd:Lrpa;

.field private static final synthetic zze:[Lrpa;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lrpa;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrpa;->zza:Lrpa;

    new-instance v1, Lrpa;

    const-string v2, "STRING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lrpa;->zzb:Lrpa;

    new-instance v2, Lrpa;

    const-string v3, "LONG"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lrpa;->zzc:Lrpa;

    new-instance v3, Lrpa;

    const-string v4, "DOUBLE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lrpa;->zzd:Lrpa;

    filled-new-array {v0, v1, v2, v3}, [Lrpa;

    move-result-object v0

    sput-object v0, Lrpa;->zze:[Lrpa;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;)Lrpa;
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object p0, Lrpa;->zzb:Lrpa;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    sget-object p0, Lrpa;->zza:Lrpa;

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    sget-object p0, Lrpa;->zzc:Lrpa;

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    sget-object p0, Lrpa;->zzd:Lrpa;

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "invalid tag type: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxg;->d(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static values()[Lrpa;
    .locals 1

    sget-object v0, Lrpa;->zze:[Lrpa;

    invoke-virtual {v0}, [Lrpa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrpa;

    return-object v0
.end method
