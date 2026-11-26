.class public abstract Lyads/gt4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/ft4;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lyads/ft4;

    sget-object v1, Lyads/ht4;->d:Lyads/ht4;

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lyads/ft4;-><init>(Lyads/ht4;Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;I)V

    sput-object v0, Lyads/gt4;->a:Lyads/ft4;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 76
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/16 v0, 0x61

    .line 78
    invoke-static {v0, p0}, Lua8;->l0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "..."

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final a(ILjava/lang/Object;)Lyads/ft4;
    .locals 7

    new-instance v0, Lyads/ft4;

    sget-object v1, Lyads/ht4;->e:Lyads/ht4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Item builder data at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " position has wrong type: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lyads/ft4;-><init>(Lyads/ht4;Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final a(Ljava/lang/Object;Ljava/lang/String;)Lyads/ft4;
    .locals 7

    .line 102
    new-instance v0, Lyads/ft4;

    .line 103
    sget-object v1, Lyads/ht4;->f:Lyads/ht4;

    .line 104
    invoke-static {p0}, Lyads/gt4;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "\' at path \'"

    const-string v3, "\' is not valid"

    .line 105
    const-string v4, "Value \'"

    invoke-static {v4, p0, v2, p1, v3}, Ln2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 106
    invoke-direct/range {v0 .. v6}, Lyads/ft4;-><init>(Lyads/ht4;Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final a(Ljava/lang/String;)Lyads/ft4;
    .locals 7

    .line 43
    new-instance v0, Lyads/ft4;

    .line 44
    sget-object v1, Lyads/ht4;->c:Lyads/ht4;

    .line 45
    const-string v2, "Value for key \'id\' at path \'"

    const-string v3, "\' is missing"

    .line 46
    invoke-static {v2, p0, v3}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 47
    invoke-direct/range {v0 .. v6}, Lyads/ft4;-><init>(Lyads/ht4;Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)Lyads/ft4;
    .locals 7

    .line 107
    new-instance v0, Lyads/ft4;

    .line 108
    sget-object v1, Lyads/ht4;->f:Lyads/ht4;

    .line 109
    invoke-static {p1}, Lyads/gt4;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "\' for key \'"

    const-string v3, "\' could not be resolved"

    .line 110
    const-string v4, "Value \'"

    invoke-static {v4, p1, v2, p0, v3}, Ln2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v4, 0x0

    move-object v3, p2

    .line 111
    invoke-direct/range {v0 .. v6}, Lyads/ft4;-><init>(Lyads/ht4;Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;
    .locals 7

    .line 112
    new-instance v0, Lyads/ft4;

    .line 113
    sget-object v1, Lyads/ht4;->f:Lyads/ht4;

    .line 114
    invoke-static {p2}, Lyads/gt4;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "\' for key \'"

    const-string v3, "\' at path \'"

    .line 115
    const-string v4, "Value \'"

    invoke-static {v4, p2, v2, p0, v3}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 116
    const-string p2, "\' is not valid"

    .line 117
    invoke-static {p0, p1, p2}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 118
    invoke-direct/range {v0 .. v6}, Lyads/ft4;-><init>(Lyads/ht4;Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)Lyads/ft4;
    .locals 7

    .line 48
    new-instance v0, Lyads/ft4;

    .line 49
    sget-object v1, Lyads/ht4;->e:Lyads/ht4;

    .line 50
    const-string v2, "\': \'"

    const-string v3, "\' received value of wrong type: \'"

    .line 51
    const-string v4, "Expression \'"

    invoke-static {v4, p0, v2, p1, v3}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 52
    const-string p1, "\'"

    .line 53
    invoke-static {p0, p2, p1}, Ll2;->d(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v4, 0x0

    move-object v3, p3

    .line 54
    invoke-direct/range {v0 .. v6}, Lyads/ft4;-><init>(Lyads/ht4;Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)Lyads/ft4;
    .locals 7

    .line 69
    new-instance v0, Lyads/ft4;

    .line 70
    sget-object v1, Lyads/ht4;->f:Lyads/ht4;

    .line 71
    const-string v2, "\' with expression \'"

    const-string v3, "\' received wrong value: \'"

    .line 72
    const-string v4, "Field \'"

    invoke-static {v4, p0, v2, p1, v3}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 73
    const-string p1, "\'"

    .line 74
    invoke-static {p0, p2, p1}, Ll2;->d(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v4, 0x0

    move-object v3, p3

    .line 75
    invoke-direct/range {v0 .. v6}, Lyads/ft4;-><init>(Lyads/ht4;Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyads/vo2;)Lyads/ft4;
    .locals 7

    .line 119
    new-instance v0, Lyads/ft4;

    .line 120
    sget-object v1, Lyads/ht4;->d:Lyads/ht4;

    .line 121
    const-string v2, "\' at \""

    const-string v3, "\": \""

    .line 122
    const-string v4, "Undefined variable \'"

    invoke-static {v4, p2, v2, p0, v3}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 123
    const-string p2, "\""

    .line 124
    invoke-static {p0, p1, p2}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v4, 0x0

    move-object v3, p3

    .line 125
    invoke-direct/range {v0 .. v6}, Lyads/ft4;-><init>(Lyads/ht4;Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final a(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;
    .locals 7

    .line 55
    new-instance v0, Lyads/ft4;

    .line 56
    sget-object v1, Lyads/ht4;->c:Lyads/ht4;

    .line 57
    const-string v2, "Value for key \'"

    const-string v3, "\' is missing"

    .line 58
    invoke-static {v2, p0, v3}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    new-instance v4, Lyads/sq3;

    invoke-direct {v4, p1}, Lyads/sq3;-><init>(Lorg/json/JSONObject;)V

    .line 60
    invoke-static {p1}, Lyads/ar3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x4

    .line 61
    invoke-direct/range {v0 .. v6}, Lyads/ft4;-><init>(Lyads/ht4;Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final a(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Exception;)Lyads/ft4;
    .locals 4

    .line 133
    new-instance v0, Lyads/ft4;

    .line 134
    sget-object v1, Lyads/ht4;->b:Lyads/ht4;

    .line 135
    const-string v1, " position of \'"

    const-string v2, "\' is failed to create"

    .line 136
    const-string v3, "Value at "

    invoke-static {p2, v3, v1, p1, v2}, Lc9;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    new-instance p2, Lyads/mq3;

    invoke-direct {p2, p0}, Lyads/mq3;-><init>(Lorg/json/JSONArray;)V

    .line 138
    invoke-static {p0}, Lyads/ar3;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p0

    .line 139
    invoke-direct {v0, p1, p3, p2, p0}, Lyads/ft4;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final a(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Object;)Lyads/ft4;
    .locals 7

    .line 93
    new-instance v0, Lyads/ft4;

    .line 94
    sget-object v1, Lyads/ht4;->f:Lyads/ht4;

    .line 95
    invoke-static {p3}, Lyads/gt4;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "\' at "

    const-string v3, " position of \'"

    .line 96
    const-string v4, "Value \'"

    invoke-static {p2, v4, p3, v2, v3}, Lmz0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 97
    const-string p3, "\' is not valid"

    .line 98
    invoke-static {p2, p1, p3}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    new-instance v4, Lyads/mq3;

    invoke-direct {v4, p0}, Lyads/mq3;-><init>(Lorg/json/JSONArray;)V

    .line 100
    invoke-static {p0}, Lyads/ar3;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x4

    .line 101
    invoke-direct/range {v0 .. v6}, Lyads/ft4;-><init>(Lyads/ht4;Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final a(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Exception;)Lyads/ft4;
    .locals 7

    .line 85
    new-instance v0, Lyads/ft4;

    .line 86
    sget-object v1, Lyads/ht4;->f:Lyads/ht4;

    .line 87
    invoke-static {p3}, Lyads/gt4;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "\' at "

    const-string v3, " position of \'"

    .line 88
    const-string v4, "Value \'"

    invoke-static {p2, v4, p3, v2, v3}, Lmz0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 89
    const-string p3, "\' is not valid"

    .line 90
    invoke-static {p2, p1, p3}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    new-instance v4, Lyads/mq3;

    invoke-direct {v4, p0}, Lyads/mq3;-><init>(Lorg/json/JSONArray;)V

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v3, p4

    .line 92
    invoke-direct/range {v0 .. v6}, Lyads/ft4;-><init>(Lyads/ht4;Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Exception;)Lyads/ft4;
    .locals 3

    .line 126
    new-instance v0, Lyads/ft4;

    .line 127
    sget-object v1, Lyads/ht4;->b:Lyads/ht4;

    .line 128
    const-string v1, "Value for key \'"

    const-string v2, "\' is failed to create"

    .line 129
    invoke-static {v1, p1, v2}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    new-instance v1, Lyads/sq3;

    invoke-direct {v1, p0}, Lyads/sq3;-><init>(Lorg/json/JSONObject;)V

    .line 131
    invoke-static {p0}, Lyads/ar3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    .line 132
    invoke-direct {v0, p1, p2, v1, p0}, Lyads/ft4;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;
    .locals 7

    .line 62
    new-instance v0, Lyads/ft4;

    .line 63
    sget-object v1, Lyads/ht4;->f:Lyads/ht4;

    .line 64
    invoke-static {p2}, Lyads/gt4;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "\' for key \'"

    const-string v3, "\' is not valid"

    .line 65
    const-string v4, "Value \'"

    invoke-static {v4, p2, v2, p1, v3}, Ln2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    new-instance v4, Lyads/sq3;

    invoke-direct {v4, p0}, Lyads/sq3;-><init>(Lorg/json/JSONObject;)V

    .line 67
    invoke-static {p0}, Lyads/ar3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x4

    .line 68
    invoke-direct/range {v0 .. v6}, Lyads/ft4;-><init>(Lyads/ht4;Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)Lyads/ft4;
    .locals 7

    .line 79
    new-instance v0, Lyads/ft4;

    .line 80
    sget-object v1, Lyads/ht4;->f:Lyads/ht4;

    .line 81
    invoke-static {p2}, Lyads/gt4;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "\' for key \'"

    const-string v3, "\' is not valid"

    .line 82
    const-string v4, "Value \'"

    invoke-static {v4, p2, v2, p1, v3}, Ln2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    new-instance v4, Lyads/sq3;

    invoke-direct {v4, p0}, Lyads/sq3;-><init>(Lorg/json/JSONObject;)V

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v3, p3

    .line 84
    invoke-direct/range {v0 .. v6}, Lyads/ft4;-><init>(Lyads/ht4;Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final b(Ljava/lang/String;)Lyads/ft4;
    .locals 7

    .line 58
    new-instance v0, Lyads/ft4;

    .line 59
    sget-object v1, Lyads/ht4;->d:Lyads/ht4;

    .line 60
    const-string v2, "No variable could be resolved for \'"

    .line 61
    invoke-static {v2, p0}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 62
    invoke-direct/range {v0 .. v6}, Lyads/ft4;-><init>(Lyads/ht4;Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final b(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;
    .locals 7

    .line 51
    new-instance v0, Lyads/ft4;

    .line 52
    sget-object v1, Lyads/ht4;->b:Lyads/ht4;

    .line 53
    const-string v2, "Template \'"

    const-string v3, "\' is missing!"

    .line 54
    invoke-static {v2, p0, v3}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    new-instance v4, Lyads/sq3;

    invoke-direct {v4, p1}, Lyads/sq3;-><init>(Lorg/json/JSONObject;)V

    .line 56
    invoke-static {p1}, Lyads/ar3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x4

    .line 57
    invoke-direct/range {v0 .. v6}, Lyads/ft4;-><init>(Lyads/ht4;Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final b(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Object;)Lyads/ft4;
    .locals 7

    new-instance v0, Lyads/ft4;

    sget-object v1, Lyads/ht4;->e:Lyads/ht4;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v2, " position of \'"

    const-string v3, "\' has wrong type "

    const-string v4, "Value at "

    invoke-static {p2, v4, v2, p1, v3}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lyads/mq3;

    invoke-direct {v4, p0}, Lyads/mq3;-><init>(Lorg/json/JSONArray;)V

    invoke-static {p0}, Lyads/ar3;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lyads/ft4;-><init>(Lyads/ht4;Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;
    .locals 7

    .line 44
    new-instance v0, Lyads/ft4;

    .line 45
    sget-object v1, Lyads/ht4;->e:Lyads/ht4;

    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v2, "Value for key \'"

    const-string v3, "\' has wrong type "

    .line 47
    invoke-static {v2, p1, v3, p2}, Lpg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    new-instance v4, Lyads/sq3;

    invoke-direct {v4, p0}, Lyads/sq3;-><init>(Lorg/json/JSONObject;)V

    .line 49
    invoke-static {p0}, Lyads/ar3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x4

    .line 50
    invoke-direct/range {v0 .. v6}, Lyads/ft4;-><init>(Lyads/ht4;Ljava/lang/String;Ljava/lang/Exception;Lyads/rq3;Ljava/lang/String;I)V

    return-object v0
.end method
