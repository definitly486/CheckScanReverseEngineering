.class public final enum Lgx8$i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgx8$i;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgx8$i;

.field public static final enum Character:Lgx8$i;

.field public static final enum Comment:Lgx8$i;

.field public static final enum Doctype:Lgx8$i;

.field public static final enum EOF:Lgx8$i;

.field public static final enum EndTag:Lgx8$i;

.field public static final enum StartTag:Lgx8$i;

.field public static final enum XmlDecl:Lgx8$i;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lgx8$i;

    const-string v1, "Doctype"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgx8$i;->Doctype:Lgx8$i;

    new-instance v1, Lgx8$i;

    const-string v2, "StartTag"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lgx8$i;->StartTag:Lgx8$i;

    new-instance v2, Lgx8$i;

    const-string v3, "EndTag"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lgx8$i;->EndTag:Lgx8$i;

    new-instance v3, Lgx8$i;

    const-string v4, "Comment"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lgx8$i;->Comment:Lgx8$i;

    new-instance v4, Lgx8$i;

    const-string v5, "Character"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lgx8$i;->Character:Lgx8$i;

    new-instance v5, Lgx8$i;

    const-string v6, "XmlDecl"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lgx8$i;->XmlDecl:Lgx8$i;

    new-instance v6, Lgx8$i;

    const-string v7, "EOF"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lgx8$i;->EOF:Lgx8$i;

    filled-new-array/range {v0 .. v6}, [Lgx8$i;

    move-result-object v0

    sput-object v0, Lgx8$i;->$VALUES:[Lgx8$i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgx8$i;
    .locals 1

    const-class v0, Lgx8$i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgx8$i;

    return-object p0
.end method

.method public static values()[Lgx8$i;
    .locals 1

    sget-object v0, Lgx8$i;->$VALUES:[Lgx8$i;

    invoke-virtual {v0}, [Lgx8$i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgx8$i;

    return-object v0
.end method
