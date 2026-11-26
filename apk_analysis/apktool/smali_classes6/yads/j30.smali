.class public final Lyads/j30;
.super Lyads/h30;
.source "SourceFile"


# static fields
.field public static final e:Lyads/j30;

.field public static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/j30;

    invoke-direct {v0}, Lyads/j30;-><init>()V

    sput-object v0, Lyads/j30;->e:Lyads/j30;

    const-string v0, "getColorGreen"

    sput-object v0, Lyads/j30;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lyads/v20;->e:Lyads/v20;

    invoke-direct {p0, v0}, Lyads/h30;-><init>(Lyads/r20;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/j30;->f:Ljava/lang/String;

    return-object p0
.end method
