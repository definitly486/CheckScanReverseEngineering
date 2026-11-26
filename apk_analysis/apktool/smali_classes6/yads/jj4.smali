.class public final enum Lyads/jj4;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lyads/jj4;

.field public static final enum d:Lyads/jj4;

.field public static final synthetic e:[Lyads/jj4;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyads/jj4;

    const/4 v1, 0x0

    const-string v2, "loading_on_show"

    const-string v3, "LoadingOnShow"

    invoke-direct {v0, v3, v1, v2}, Lyads/jj4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/jj4;->c:Lyads/jj4;

    new-instance v1, Lyads/jj4;

    const/4 v2, 0x1

    const-string v3, "loading_on_back"

    const-string v4, "LoadingOnBack"

    invoke-direct {v1, v4, v2, v3}, Lyads/jj4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lyads/jj4;->d:Lyads/jj4;

    filled-new-array {v0, v1}, [Lyads/jj4;

    move-result-object v0

    sput-object v0, Lyads/jj4;->e:[Lyads/jj4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/jj4;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/jj4;
    .locals 1

    const-class v0, Lyads/jj4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/jj4;

    return-object p0
.end method

.method public static values()[Lyads/jj4;
    .locals 1

    sget-object v0, Lyads/jj4;->e:[Lyads/jj4;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/jj4;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/jj4;->b:Ljava/lang/String;

    return-object p0
.end method
