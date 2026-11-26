.class public final Lyads/zy5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/bz5;


# static fields
.field public static final a:Lyads/zy5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/zy5;

    invoke-direct {v0}, Lyads/zy5;-><init>()V

    sput-object v0, Lyads/zy5;->a:Lyads/zy5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "-"

    return-object p0
.end method
