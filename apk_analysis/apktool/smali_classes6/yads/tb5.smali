.class public final Lyads/tb5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Lyads/tb5;

.field public static final b:Lyads/sb5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/tb5;

    invoke-direct {v0}, Lyads/tb5;-><init>()V

    sput-object v0, Lyads/tb5;->a:Lyads/tb5;

    new-instance v0, Lyads/sb5;

    invoke-direct {v0}, Lyads/sb5;-><init>()V

    sput-object v0, Lyads/tb5;->b:Lyads/sb5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
