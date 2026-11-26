.class public final Lyads/q53;
.super Lyads/ui;
.source "SourceFile"


# static fields
.field public static final d:Lyads/q53;

.field public static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/q53;

    invoke-direct {v0}, Lyads/q53;-><init>()V

    sput-object v0, Lyads/q53;->d:Lyads/q53;

    const-string v0, "getOptColorFromArray"

    sput-object v0, Lyads/q53;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/ui;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/q53;->e:Ljava/lang/String;

    return-object p0
.end method
