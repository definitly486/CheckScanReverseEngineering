.class public final Lyads/v33;
.super Lyads/ci;
.source "SourceFile"


# static fields
.field public static final c:Lyads/v33;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/v33;

    invoke-direct {v0}, Lyads/v33;-><init>()V

    sput-object v0, Lyads/v33;->c:Lyads/v33;

    const-string v0, "getDictFromArray"

    sput-object v0, Lyads/v33;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/ci;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/v33;->d:Ljava/lang/String;

    return-object p0
.end method
