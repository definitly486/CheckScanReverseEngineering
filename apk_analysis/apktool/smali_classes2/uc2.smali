.class public final synthetic Luc2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Li03;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/time/DayOfWeek;->values()[Ljava/time/DayOfWeek;

    move-result-object v0

    invoke-static {v0}, Lh03;->a([Ljava/lang/Enum;)Li03;

    move-result-object v0

    sput-object v0, Luc2;->a:Li03;

    return-void
.end method
