.class public final Leu7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lsj0;

.field public static final b:Lv68;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsj0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lsj0;-><init>(I)V

    sput-object v0, Leu7$a;->a:Lsj0;

    new-instance v0, Lv68;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Leu7$a;->b:Lv68;

    return-void
.end method
