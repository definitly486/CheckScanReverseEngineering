.class public final enum Lyads/ah6;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lyads/lq3;


# static fields
.field public static final enum c:Lyads/ah6;

.field public static final enum d:Lyads/ah6;

.field public static final enum e:Lyads/ah6;

.field public static final synthetic f:[Lyads/ah6;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyads/ah6;

    const/4 v1, 0x0

    const-string v2, "default"

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lyads/ah6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/ah6;->c:Lyads/ah6;

    new-instance v1, Lyads/ah6;

    const/4 v2, 0x1

    const-string v3, "loading"

    const-string v4, "LOADING"

    invoke-direct {v1, v4, v2, v3}, Lyads/ah6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/ah6;->d:Lyads/ah6;

    new-instance v2, Lyads/ah6;

    const/4 v3, 0x2

    const-string v4, "hidden"

    const-string v5, "HIDDEN"

    invoke-direct {v2, v5, v3, v4}, Lyads/ah6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lyads/ah6;->e:Lyads/ah6;

    filled-new-array {v0, v1, v2}, [Lyads/ah6;

    move-result-object v0

    sput-object v0, Lyads/ah6;->f:[Lyads/ah6;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/ah6;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/ah6;
    .locals 1

    const-class v0, Lyads/ah6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/ah6;

    return-object p0
.end method

.method public static values()[Lyads/ah6;
    .locals 1

    sget-object v0, Lyads/ah6;->f:[Lyads/ah6;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/ah6;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lyads/ah6;->b:Ljava/lang/String;

    invoke-static {p0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "state: %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
