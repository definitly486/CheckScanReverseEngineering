.class public final Lyd;
.super Lkd$j$b;
.source "SourceFile"


# static fields
.field public static final e:Lyd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyd;

    const-string v1, "button_activate"

    sget-object v2, Lp46;->d:Lp46;

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkd$j$b;-><init>(Ljava/util/Map;)V

    sput-object v0, Lyd;->e:Lyd;

    return-void
.end method
