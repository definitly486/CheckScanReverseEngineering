.class public final enum Lyads/mn3;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lyads/mn3;

.field public static final synthetic d:[Lyads/mn3;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyads/mn3;

    const/4 v1, 0x0

    const-string v2, "click"

    const-string v3, "CLICK"

    invoke-direct {v0, v3, v1, v2}, Lyads/mn3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lyads/mn3;->c:Lyads/mn3;

    new-instance v1, Lyads/mn3;

    const/4 v2, 0x1

    const-string v3, "invitationAccept"

    const-string v4, "INVITATION_ACCEPTED"

    invoke-direct {v1, v4, v2, v3}, Lyads/mn3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    filled-new-array {v0, v1}, [Lyads/mn3;

    move-result-object v0

    sput-object v0, Lyads/mn3;->d:[Lyads/mn3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/mn3;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/mn3;
    .locals 1

    const-class v0, Lyads/mn3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/mn3;

    return-object p0
.end method

.method public static values()[Lyads/mn3;
    .locals 1

    sget-object v0, Lyads/mn3;->d:[Lyads/mn3;

    invoke-virtual {v0}, [Lyads/mn3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/mn3;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/mn3;->b:Ljava/lang/String;

    return-object p0
.end method
