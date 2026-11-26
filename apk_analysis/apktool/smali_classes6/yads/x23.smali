.class public final Lyads/x23;
.super Lyads/ui;
.source "SourceFile"


# static fields
.field public static final d:Lyads/x23;

.field public static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/x23;

    invoke-direct {v0}, Lyads/x23;-><init>()V

    sput-object v0, Lyads/x23;->d:Lyads/x23;

    const-string v0, "getArrayOptColor"

    sput-object v0, Lyads/x23;->e:Ljava/lang/String;

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

    sget-object p0, Lyads/x23;->e:Ljava/lang/String;

    return-object p0
.end method
