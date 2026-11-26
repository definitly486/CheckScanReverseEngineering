.class public abstract Ll4a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ll5a;

.field public static final b:Lq1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll5a;

    invoke-direct {v0}, Ll5a;-><init>()V

    sput-object v0, Ll4a;->a:Ll5a;

    new-instance v0, Lq1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ll4a;->b:Lq1;

    return-void
.end method
