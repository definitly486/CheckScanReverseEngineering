.class public final Lyads/g30;
.super Lyads/i30;
.source "SourceFile"


# static fields
.field public static final e:Lyads/g30;

.field public static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/g30;

    invoke-direct {v0}, Lyads/g30;-><init>()V

    sput-object v0, Lyads/g30;->e:Lyads/g30;

    const-string v0, "setColorBlue"

    sput-object v0, Lyads/g30;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lyads/q20;->e:Lyads/q20;

    invoke-direct {p0, v0}, Lyads/i30;-><init>(Lyads/s20;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/g30;->f:Ljava/lang/String;

    return-object p0
.end method
