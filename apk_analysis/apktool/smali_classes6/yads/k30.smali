.class public final Lyads/k30;
.super Lyads/i30;
.source "SourceFile"


# static fields
.field public static final e:Lyads/k30;

.field public static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/k30;

    invoke-direct {v0}, Lyads/k30;-><init>()V

    sput-object v0, Lyads/k30;->e:Lyads/k30;

    const-string v0, "setColorGreen"

    sput-object v0, Lyads/k30;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lyads/w20;->e:Lyads/w20;

    invoke-direct {p0, v0}, Lyads/i30;-><init>(Lyads/s20;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/k30;->f:Ljava/lang/String;

    return-object p0
.end method
